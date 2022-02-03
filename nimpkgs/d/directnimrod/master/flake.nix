{
  description = ''Wrapper for microsoft's DirectX libraries'';
  inputs.src-directnimrod-master.flake = false;
  inputs.src-directnimrod-master.type = "bitbucket";
  inputs.src-directnimrod-master.owner = "barcharcraz";
  inputs.src-directnimrod-master.repo = "directnimrod";
  inputs.src-directnimrod-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-directnimrod-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-directnimrod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-directnimrod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}