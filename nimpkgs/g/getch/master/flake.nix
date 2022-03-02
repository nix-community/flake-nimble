{
  description = ''getch() for Windows and Unix'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-getch-master.flake = false;
  inputs.src-getch-master.type = "github";
  inputs.src-getch-master.owner = "6A";
  inputs.src-getch-master.repo = "getch";
  inputs.src-getch-master.ref = "refs/heads/master";
  inputs.src-getch-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-getch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-getch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-getch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}