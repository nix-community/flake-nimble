{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zfcore-1_0_29.flake = false;
  inputs.src-zfcore-1_0_29.type = "github";
  inputs.src-zfcore-1_0_29.owner = "zendbit";
  inputs.src-zfcore-1_0_29.repo = "nim.zfcore";
  inputs.src-zfcore-1_0_29.ref = "refs/tags/1.0.29";
  inputs.src-zfcore-1_0_29.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zfblast".type = "github";
  # inputs."zfblast".owner = "riinr";
  # inputs."zfblast".repo = "flake-nimble";
  # inputs."zfblast".ref = "flake-pinning";
  # inputs."zfblast".dir = "nimpkgs/z/zfblast";
  # inputs."zfblast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zfblast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."uri3".type = "github";
  # inputs."uri3".owner = "riinr";
  # inputs."uri3".repo = "flake-nimble";
  # inputs."uri3".ref = "flake-pinning";
  # inputs."uri3".dir = "nimpkgs/u/uri3";
  # inputs."uri3".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."uri3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stdext".type = "github";
  # inputs."stdext".owner = "riinr";
  # inputs."stdext".repo = "flake-nimble";
  # inputs."stdext".ref = "flake-pinning";
  # inputs."stdext".dir = "nimpkgs/s/stdext";
  # inputs."stdext".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stdext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfcore-1_0_29, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-1_0_29;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-1_0_29"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}