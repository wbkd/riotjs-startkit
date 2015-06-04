<itemlist>
  <h3>{ opts.title }</h3>

  <ul>
    <li each={ items } >{ this.name }</li>
  </ul>

  <script>
    this.items = [];

    this.on('mount', () => {
      riot.control.trigger(riot.EVT.loadItems);
    });

    riot.control.on(riot.EVT.loadItemsSuccess, items => {
      this.items = items;
      this.update()
    });
  </script>
</itemlist>