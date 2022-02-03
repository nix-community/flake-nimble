{
  description = ''React.js bindings for Nim'';
  inputs.src-react-master.flake = false;
  inputs.src-react-master.type = "github";
  inputs.src-react-master.owner = "andreaferretti";
  inputs.src-react-master.repo = "react.nim";
  inputs.src-react-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-react-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}