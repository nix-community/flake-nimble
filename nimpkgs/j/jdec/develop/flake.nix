{
  description = ''Flexible JSON manshal/unmarshal library for nim'';
  inputs.src-jdec-develop.flake = false;
  inputs.src-jdec-develop.type = "github";
  inputs.src-jdec-develop.owner = "diegogub";
  inputs.src-jdec-develop.repo = "jdec";
  inputs.src-jdec-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-jdec-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jdec-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jdec-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}