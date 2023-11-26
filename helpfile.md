// HTML file //

<div class="charts">
    <%= line_chart @airmeasures.map { |airmeasure|
      {name: airmeasure.measure_type, data: airmeasure.timestamps}
    } %>
  </div>

<!-- <div class="chart">
    <%= line_chart @airmeasures.group_by_day(:created_at, range: 1.month.ago..Time.now).count(:measure_float), library: { scales: { xAxes: [{ type: 'measure_float', time: { unit: 'day' } }] } } %>
  </div> -->

<!-- <div class="container">
    <ul><% @airmeasures.each do |airmeasure| %>
      <li><%= airmeasure.timestamps %></li>
      <%= airmeasure.measure_type %>
      <%= airmeasure.measure_float %>
      <%= airmeasure.brand %>
      <%= airmeasure.serial_number %>
      <%= airmeasure.establishment_id %>
      <%= airmeasure.establishment_name %>
      <%= airmeasure.establishment_city %>
      <%= airmeasure.establishment_postcode %>
      <%= airmeasure.establishment_address %>
      <%= airmeasure.establishment_latitude %>
      <%= airmeasure.establishment_longitude %>
      <%= airmeasure.room_id %>
      <li><%= airmeasure.room_name %></li>
    <% end %>
    </ul>
  </div> -->


  <!--
<% ['CO2', 'HUM', 'TMP'].each do |measure_type| %>
  <h2><%= "#{measure_type}" %></h2>

  <div class="container">
    <%= line_chart @airmeasures.where(measure_type: measure_type).group(:room_name).order(room_name: :asc).group_by_day(:timestamps).maximum(:measure_float) %>
  </div>
<% end %>


// shows dots
<% ['CO2', 'HUM', 'TMP'].each do |measure_type| %>
  <h2><%= "#{measure_type}" %></h2>

  <div class="container">
    <%= line_chart @airmeasures.where(measure_type: measure_type).group(:room_name, :timestamps).order(room_name: :asc).maximum(:measure_float) %>
  </div>
<% end %>

-->


// shows dots only
<% ['CO2', 'HUM', 'TMP'].each do |measure_type| %>
  <h2><%= "#{measure_type}" %></h2>

  <div class="container">
    <%= line_chart @airmeasures.where(measure_type: measure_type).group(:room_name, :timestamps).order(room_id: :asc).maximum(:measure_float) %>
  </div>
<% end %>


<% ['CO2', 'HUM', 'TMP'].each do |measure_type| %>
          <h2><%= "#{measure_type}" %></h2>

          <div class="chart">
            <%= line_chart @airmeasures.where(measure_type: measure_type).group(:room_name, :timestamps).order(room_id: :asc).maximum(:measure_float), code: true, library: { datasets: { pointStyle: 'line' } } %>
          </div>
        <% end %>


<div class="container">
      <h2>PandO2</h2>
        <% ['CO2', 'HUM', 'TMP'].each do |measure_type| %>
          <h2><%= "#{measure_type}" %></h2>

          <div class="chart">
            <%= line_chart @airmeasures.where(measure_type: measure_type).group(:room_name, :timestamps).order(room_id: :asc).maximum(:measure_float), library: { datasets: { pointStyle: 'line' } } %>
          </div>
        <% end %>
    </div>

    <div style="margin-left:5%;margin-right:5%">
        <canvas id="myLineChart" style="width:100%;max-width:500px"></canvas>
    </div>
