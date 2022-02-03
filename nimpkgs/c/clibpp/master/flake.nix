{
  description = ''Easy way to 'Mock' C++ interface'';
  inputs.src-clibpp-master.flake = false;
  inputs.src-clibpp-master.type = "github";
  inputs.src-clibpp-master.owner = "onionhammer";
  inputs.src-clibpp-master.repo = "clibpp";
  inputs.src-clibpp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-clibpp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clibpp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clibpp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}