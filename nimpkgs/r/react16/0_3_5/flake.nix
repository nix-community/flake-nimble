{
  description = ''React.js 16.x bindings for Nim'';
  inputs.src-react16-0_3_5.flake = false;
  inputs.src-react16-0_3_5.type = "github";
  inputs.src-react16-0_3_5.owner = "kristianmandrup";
  inputs.src-react16-0_3_5.repo = "react-16.nim";
  inputs.src-react16-0_3_5.ref = "refs/tags/0.3.5";
  
  outputs = { self, nixpkgs, src-react16-0_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react16-0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}