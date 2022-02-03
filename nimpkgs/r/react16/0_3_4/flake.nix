{
  description = ''React.js 16.x bindings for Nim'';
  inputs.src-react16-0_3_4.flake = false;
  inputs.src-react16-0_3_4.type = "github";
  inputs.src-react16-0_3_4.owner = "kristianmandrup";
  inputs.src-react16-0_3_4.repo = "react-16.nim";
  inputs.src-react16-0_3_4.ref = "refs/tags/0.3.4";
  
  outputs = { self, nixpkgs, src-react16-0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react16-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}