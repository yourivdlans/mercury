Mercury::Engine.routes.draw do
  match '/editor(/*requested_uri)' => "mercury#edit", :as => :mercury_editor, via: :all

  scope '/mercury' do
    match ':type/:resource' => "mercury#resource", via: :all
    match 'snippets/:name/options' => "mercury#snippet_options", via: :all
    match 'snippets/:name/preview' => "mercury#snippet_preview", via: :all
  end
end
