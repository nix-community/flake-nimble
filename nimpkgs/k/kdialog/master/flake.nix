{
  description = ''KDialog Qt5 Wrapper, easy API, KISS design'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-kdialog-master.flake = false;
  inputs.src-kdialog-master.type = "github";
  inputs.src-kdialog-master.owner = "juancarlospaco";
  inputs.src-kdialog-master.repo = "nim-kdialog";
  inputs.src-kdialog-master.ref = "refs/heads/master";
  inputs.src-kdialog-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kdialog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kdialog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kdialog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}