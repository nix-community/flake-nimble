{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimview-0_3_2.flake = false;
  inputs.src-nimview-0_3_2.type = "github";
  inputs.src-nimview-0_3_2.owner = "marcomq";
  inputs.src-nimview-0_3_2.repo = "nimview";
  inputs.src-nimview-0_3_2.ref = "refs/tags/0.3.2";
  inputs.src-nimview-0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimpy".type = "github";
  # inputs."nimpy".owner = "riinr";
  # inputs."nimpy".repo = "flake-nimble";
  # inputs."nimpy".ref = "flake-pinning";
  # inputs."nimpy".dir = "nimpkgs/n/nimpy";
  # inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nake".type = "github";
  # inputs."nake".owner = "riinr";
  # inputs."nake".repo = "flake-nimble";
  # inputs."nake".ref = "flake-pinning";
  # inputs."nake".dir = "nimpkgs/n/nake";
  # inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimview-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimview-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}