{
  description = ''Little game library using opengl and sfml'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ludens-master.flake = false;
  inputs.src-ludens-master.type = "github";
  inputs.src-ludens-master.owner = "rnentjes";
  inputs.src-ludens-master.repo = "nim-ludens";
  inputs.src-ludens-master.ref = "refs/heads/master";
  inputs.src-ludens-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ludens-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ludens-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ludens-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}