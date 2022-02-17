{
  description = ''DNS resolution nimble making use of the native glibc resolv library'';
  inputs.src-resolv-master.flake = false;
  inputs.src-resolv-master.type = "github";
  inputs.src-resolv-master.owner = "mildred";
  inputs.src-resolv-master.repo = "resolv.nim";
  inputs.src-resolv-master.ref = "refs/heads/master";
  
  
  inputs."dnsprotocol".type = "github";
  inputs."dnsprotocol".owner = "riinr";
  inputs."dnsprotocol".repo = "flake-nimble";
  inputs."dnsprotocol".ref = "flake-pinning";
  inputs."dnsprotocol".dir = "nimpkgs/d/dnsprotocol";

  outputs = { self, nixpkgs, src-resolv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-resolv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-resolv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}