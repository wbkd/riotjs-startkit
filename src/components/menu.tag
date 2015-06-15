<menu>
  <ul class="clearfix">
    <li each={ navItems } onclick={parent.route} class={ active : parent.currentView === this.view}>{ this.title }</li>
  </ul>


  <script>

    this.currentView = riot.routeState.view;

    this.navItems = [
      { title : 'Home', view : 'home'},
      { title : 'Projects', view : 'projects' }
    ];

    this.route = (evt) => {
      riot.route(evt.item.view)
    };

  </script>
</menu>