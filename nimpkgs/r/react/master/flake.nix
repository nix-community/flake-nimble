{
  description = ''React.js bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-react-master.flake = false;
  inputs.src-react-master.type = "github";
  inputs.src-react-master.owner = "andreaferretti";
  inputs.src-react-master.repo = "react.nim";
  inputs.src-react-master.ref = "refs/heads/master";
  inputs.src-react-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-react-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-react-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}