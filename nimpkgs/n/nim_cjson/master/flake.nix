{
  description = ''cjson wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nim_cjson-master.flake = false;
  inputs.src-nim_cjson-master.type = "github";
  inputs.src-nim_cjson-master.owner = "muxueqz";
  inputs.src-nim_cjson-master.repo = "nim_cjson";
  inputs.src-nim_cjson-master.ref = "refs/heads/master";
  inputs.src-nim_cjson-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgen".type = "github";
  # inputs."nimgen".owner = "riinr";
  # inputs."nimgen".repo = "flake-nimble";
  # inputs."nimgen".ref = "flake-pinning";
  # inputs."nimgen".dir = "nimpkgs/n/nimgen";
  # inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_cjson-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_cjson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_cjson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}