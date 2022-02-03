{
  description = ''Redux Implementation in nim'';
  inputs.src-redux_nim-master.flake = false;
  inputs.src-redux_nim-master.type = "github";
  inputs.src-redux_nim-master.owner = "M4RC3L05";
  inputs.src-redux_nim-master.repo = "redux-nim";
  inputs.src-redux_nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-redux_nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redux_nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redux_nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}