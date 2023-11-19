const { createWorker, createScheduler } = Tesseract;
const scheduler = createScheduler();

const addMessage = (m, bold) => {
	let msg = `<p>${m}</p>`;
	if (bold) {
		msg = `<p class="bold">${m}</p>`;
	}
	messages.innerHTML += msg;
	messages.scrollTop = messages.scrollHeight;
}

const doOCR = async (video) => {
	const worker = createWorker();
	await worker.load();
	await worker.loadLanguage('eng');
	await worker.initialize('eng');

	const c = document.createElement('canvas');
	c.width = 640;
	c.height = 360;
	c.getContext('2d').drawImage(video, 0, 0, 640, 360);
	const { data: { text } } = await worker.recognize(c);

	const regex = /[a-zA-Z0-9]/gi;
  const scannedText = text && text.match(regex) && text.match(regex).filter(x => x).join("");
  console.log({text, scannedText});
};

(async () => {
	console.log('Initializing Tesseract.js');
	// for (let i = 0; i < 4; i++) {
	// 	const worker = createWorker();
	// 	await worker.load();
	// 	await worker.loadLanguage('eng');
	// 	await worker.initialize('eng');
	// 	scheduler.addWorker(worker);
	// }
	console.log('Initialized Tesseract.js');
	const video = document.querySelector('#myVidPlayer');

	if (navigator.mediaDevices.getUserMedia) {
  	navigator.mediaDevices.getUserMedia({ video: true })
    	.then(function (stream) {
      	video.srcObject = stream;
				video.play();
				doOCR(video);
  })
  .catch(function (err0r) {
      console.log("Something went wrong!");
  });
}
})();