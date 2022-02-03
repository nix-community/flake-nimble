{
  description = ''React.js bindings for Nim'';
  inputs.src-react-0_1_2.flake = false;
  inputs.src-react-0_1_2.type = "github";
  inputs.src-react-0_1_2.owner = "andreaferretti";
  inputs.src-react-0_1_2.repo = "react.nim";
  inputs.src-react-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-react-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}