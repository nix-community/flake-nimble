{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zfcore-v1_1_7.flake = false;
  inputs.src-zfcore-v1_1_7.type = "github";
  inputs.src-zfcore-v1_1_7.owner = "zendbit";
  inputs.src-zfcore-v1_1_7.repo = "nim.zfcore";
  inputs.src-zfcore-v1_1_7.ref = "refs/tags/v1.1.7";
  inputs.src-zfcore-v1_1_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfcore-v1_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-v1_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-v1_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}