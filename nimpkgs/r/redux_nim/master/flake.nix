{
  description = ''Redux Implementation in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-redux_nim-master.flake = false;
  inputs.src-redux_nim-master.type = "github";
  inputs.src-redux_nim-master.owner = "M4RC3L05";
  inputs.src-redux_nim-master.repo = "redux-nim";
  inputs.src-redux_nim-master.ref = "refs/heads/master";
  inputs.src-redux_nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redux_nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redux_nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redux_nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}