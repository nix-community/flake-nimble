{
  description = ''React.js 16.x bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-react16-master.flake = false;
  inputs.src-react16-master.type = "github";
  inputs.src-react16-master.owner = "kristianmandrup";
  inputs.src-react16-master.repo = "react-16.nim";
  inputs.src-react16-master.ref = "refs/heads/master";
  inputs.src-react16-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-react16-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-react16-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}