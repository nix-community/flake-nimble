{
  description = ''Create files of the desired size'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fwrite-master.flake = false;
  inputs.src-fwrite-master.type = "github";
  inputs.src-fwrite-master.owner = "pdrb";
  inputs.src-fwrite-master.repo = "nim-fwrite";
  inputs.src-fwrite-master.ref = "refs/heads/master";
  inputs.src-fwrite-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fwrite-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fwrite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fwrite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}