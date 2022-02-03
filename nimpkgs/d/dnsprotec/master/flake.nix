{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';
  inputs.src-dnsprotec-master.flake = false;
  inputs.src-dnsprotec-master.type = "github";
  inputs.src-dnsprotec-master.owner = "juancarlospaco";
  inputs.src-dnsprotec-master.repo = "nim-dnsprotec";
  inputs.src-dnsprotec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dnsprotec-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsprotec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsprotec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}