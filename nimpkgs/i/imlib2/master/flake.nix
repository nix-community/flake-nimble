{
  description = ''Simple wrapper of the Imlib2 library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-imlib2-master.flake = false;
  inputs.src-imlib2-master.type = "github";
  inputs.src-imlib2-master.owner = "PMunch";
  inputs.src-imlib2-master.repo = "Imlib2";
  inputs.src-imlib2-master.ref = "refs/heads/master";
  inputs.src-imlib2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-imlib2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imlib2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imlib2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}