{
  description = ''React.js 16.x bindings for Nim'';
  inputs.src-react16-master.flake = false;
  inputs.src-react16-master.type = "github";
  inputs.src-react16-master.owner = "kristianmandrup";
  inputs.src-react16-master.repo = "react-16.nim";
  inputs.src-react16-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-react16-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-react16-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}