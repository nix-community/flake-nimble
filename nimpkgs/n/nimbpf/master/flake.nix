{
  description = ''libbpf for nim'';
  inputs.src-nimbpf-master.flake = false;
  inputs.src-nimbpf-master.type = "github";
  inputs.src-nimbpf-master.owner = "jasonk000";
  inputs.src-nimbpf-master.repo = "nimbpf";
  inputs.src-nimbpf-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimbpf-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbpf-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbpf-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}