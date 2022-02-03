{
  description = ''React.js 16.x bindings for Nim'';
  inputs.src-react16-v0_3_7.flake = false;
  inputs.src-react16-v0_3_7.type = "github";
  inputs.src-react16-v0_3_7.owner = "kristianmandrup";
  inputs.src-react16-v0_3_7.repo = "react-16.nim";
  inputs.src-react16-v0_3_7.ref = "refs/tags/v0.3.7";
  
  outputs = { self, nixpkgs, src-react16-v0_3_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-v0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react16-v0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}