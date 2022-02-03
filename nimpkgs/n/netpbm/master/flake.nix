{
  description = ''Wrapper for libnetpbm'';
  inputs.src-netpbm-master.flake = false;
  inputs.src-netpbm-master.type = "github";
  inputs.src-netpbm-master.owner = "barcharcraz";
  inputs.src-netpbm-master.repo = "nim-netpbm";
  inputs.src-netpbm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-netpbm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netpbm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-netpbm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}