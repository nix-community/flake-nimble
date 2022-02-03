{
  description = ''Obsolete - please use gles instead!'';
  inputs.src-io-gles-master.flake = false;
  inputs.src-io-gles-master.type = "github";
  inputs.src-io-gles-master.owner = "nimious";
  inputs.src-io-gles-master.repo = "io-gles";
  inputs.src-io-gles-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-io-gles-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-gles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-io-gles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}