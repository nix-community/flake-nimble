{
  description = ''Nim interface to plotly'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-plotly-v0_2_0.flake = false;
  inputs.src-plotly-v0_2_0.type = "github";
  inputs.src-plotly-v0_2_0.owner = "SciNim";
  inputs.src-plotly-v0_2_0.repo = "nim-plotly";
  inputs.src-plotly-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-plotly-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsbind".type = "github";
  # inputs."jsbind".owner = "riinr";
  # inputs."jsbind".repo = "flake-nimble";
  # inputs."jsbind".ref = "flake-pinning";
  # inputs."jsbind".dir = "nimpkgs/j/jsbind";
  # inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."webview".type = "github";
  # inputs."webview".owner = "riinr";
  # inputs."webview".repo = "flake-nimble";
  # inputs."webview".ref = "flake-pinning";
  # inputs."webview".dir = "nimpkgs/w/webview";
  # inputs."webview".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."webview".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."websocket".type = "github";
  # inputs."websocket".owner = "riinr";
  # inputs."websocket".repo = "flake-nimble";
  # inputs."websocket".ref = "flake-pinning";
  # inputs."websocket".dir = "nimpkgs/w/websocket";
  # inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plotly-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plotly-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plotly-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}