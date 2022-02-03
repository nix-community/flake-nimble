{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';
  inputs.src-dnsprotec-0_0_1.flake = false;
  inputs.src-dnsprotec-0_0_1.type = "github";
  inputs.src-dnsprotec-0_0_1.owner = "juancarlospaco";
  inputs.src-dnsprotec-0_0_1.repo = "nim-dnsprotec";
  inputs.src-dnsprotec-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-dnsprotec-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsprotec-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsprotec-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}