{
  description = ''A simple chunked external protocol interface for Splunk custom search commands.'';
  inputs.src-nim_cexc-master.flake = false;
  inputs.src-nim_cexc-master.type = "github";
  inputs.src-nim_cexc-master.owner = "metasyn";
  inputs.src-nim_cexc-master.repo = "nim-cexc-splunk";
  inputs.src-nim_cexc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim_cexc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_cexc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_cexc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}