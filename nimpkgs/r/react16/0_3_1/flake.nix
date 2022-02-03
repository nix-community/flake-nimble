{
  description = ''React.js 16.x bindings for Nim'';
  inputs.src-react16-0_3_1.flake = false;
  inputs.src-react16-0_3_1.type = "github";
  inputs.src-react16-0_3_1.owner = "kristianmandrup";
  inputs.src-react16-0_3_1.repo = "react-16.nim";
  inputs.src-react16-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-react16-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react16-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}