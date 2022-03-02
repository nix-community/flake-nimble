{
  description = ''Python requirements.txt generic parser for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-requirementstxt-master.flake = false;
  inputs.src-requirementstxt-master.type = "github";
  inputs.src-requirementstxt-master.owner = "juancarlospaco";
  inputs.src-requirementstxt-master.repo = "nim-requirementstxt";
  inputs.src-requirementstxt-master.ref = "refs/heads/master";
  inputs.src-requirementstxt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-requirementstxt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-requirementstxt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-requirementstxt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}