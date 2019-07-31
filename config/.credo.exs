%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["*.{ex,exs}", "{priv,config,lib,test}/**/*.{ex,exs}"],
        excluded: []
      },
      checks: [
        {Credo.Check.Readability.MaxLineLength, false},
        {Credo.Check.Readability.ModuleDoc, false},
        {Credo.Check.Readability.AliasOrder, false}
      ],
      plugins: [],
      requires: [],
      strict: true,
      color: true
    }
  ]
}
