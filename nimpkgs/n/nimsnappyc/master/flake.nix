{
  description = ''Wrapper for the Snappy-C compression library'';
  inputs.src-nimsnappyc-master.flake = false;
  inputs.src-nimsnappyc-master.type = "github";
  inputs.src-nimsnappyc-master.owner = "NimCompression";
  inputs.src-nimsnappyc-master.repo = "nimsnappyc";
  inputs.src-nimsnappyc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimsnappyc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsnappyc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsnappyc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}