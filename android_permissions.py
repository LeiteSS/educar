from kivy.utils import platform
from kivy.clock import mainthread

if platform == 'android':
    from kivy.uix.button import Button
    from kivy.uix.modalview import ModalView
    from kivy.clock import Clock
    from android import api_version, mActivity
    from android.permissions import request_permissions, check_permission, \
        Permission

class AndroidPermissions:
    def __init__(self, start_app = None):
        self.permission_dialog_count = 0
        self.start_app = start_app
        if platform == 'android':
            self.permissions = [Permission.CAMERA]          
            self.permission_status([],[])
        elif self.start_app:
            self.start_app()

    def permission_status(self, permissions, grants):
        granted = True
        for p in self.permissions:
            granted = granted and check_permission(p)
        if granted:
            if self.start_app:
                self.start_app()
        elif self.permission_dialog_count < 2:
            Clock.schedule_once(self.permission_dialog)  
        else:
            self.no_permission_view()
        
    def permission_dialog(self, dt):
        self.permission_dialog_count += 1
        request_permissions(self.permissions, self.permission_status)

    @mainthread
    def no_permission_view(self):
        view = ModalView()
        view.add_widget(Button(text='Permissão Não concedida.\n\n' +\
                               'Aperte para sair.\n\n\n' +\
                               'Se você escolheu "Não Permitir",\n' +\
                               'permita através das configuração do smartphone.',
                               on_press=self.bye))
        view.open()

    def bye(self, instance):
        mActivity.finishAndRemoveTask() 
