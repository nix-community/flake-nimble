{
  description = ''fragment-aware assembler for short reads'';
  inputs.src-falas-master.flake = false;
  inputs.src-falas-master.type = "github";
  inputs.src-falas-master.owner = "brentp";
  inputs.src-falas-master.repo = "falas";
  inputs.src-falas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-falas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-falas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-falas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}