{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimview-v0_1_2.flake = false;
  inputs.src-nimview-v0_1_2.type = "github";
  inputs.src-nimview-v0_1_2.owner = "marcomq";
  inputs.src-nimview-v0_1_2.repo = "nimview";
  inputs.src-nimview-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-nimview-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jester".type = "github";
  # inputs."jester".owner = "riinr";
  # inputs."jester".repo = "flake-nimble";
  # inputs."jester".ref = "flake-pinning";
  # inputs."jester".dir = "nimpkgs/j/jester";
  # inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimpy".type = "github";
  # inputs."nimpy".owner = "riinr";
  # inputs."nimpy".repo = "flake-nimble";
  # inputs."nimpy".ref = "flake-pinning";
  # inputs."nimpy".dir = "nimpkgs/n/nimpy";
  # inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."webview".type = "github";
  # inputs."webview".owner = "riinr";
  # inputs."webview".repo = "flake-nimble";
  # inputs."webview".ref = "flake-pinning";
  # inputs."webview".dir = "nimpkgs/w/webview";
  # inputs."webview".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."webview".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nake".type = "github";
  # inputs."nake".owner = "riinr";
  # inputs."nake".repo = "flake-nimble";
  # inputs."nake".ref = "flake-pinning";
  # inputs."nake".dir = "nimpkgs/n/nake";
  # inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimview-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimview-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}