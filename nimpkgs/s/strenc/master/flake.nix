{
  description = ''A library to automatically encrypt all string constants in your programs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-strenc-master.flake = false;
  inputs.src-strenc-master.type = "github";
  inputs.src-strenc-master.owner = "Yardanico";
  inputs.src-strenc-master.repo = "nim-strenc";
  inputs.src-strenc-master.ref = "refs/heads/master";
  inputs.src-strenc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-strenc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strenc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-strenc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}