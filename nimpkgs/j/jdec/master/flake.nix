{
  description = ''Flexible JSON manshal/unmarshal library for nim'';
  inputs.src-jdec-master.flake = false;
  inputs.src-jdec-master.type = "github";
  inputs.src-jdec-master.owner = "diegogub";
  inputs.src-jdec-master.repo = "jdec";
  inputs.src-jdec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jdec-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jdec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jdec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}