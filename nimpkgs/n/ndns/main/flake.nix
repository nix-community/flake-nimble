{
  description = ''A pure Nim Domain Name System (DNS) client'';
  inputs.src-ndns-main.flake = false;
  inputs.src-ndns-main.type = "github";
  inputs.src-ndns-main.owner = "rockcavera";
  inputs.src-ndns-main.repo = "nim-ndns";
  inputs.src-ndns-main.ref = "refs/heads/main";
  
  
  inputs."dnsprotocol".type = "github";
  inputs."dnsprotocol".owner = "riinr";
  inputs."dnsprotocol".repo = "flake-nimble";
  inputs."dnsprotocol".ref = "flake-pinning";
  inputs."dnsprotocol".dir = "nimpkgs/d/dnsprotocol";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-ndns-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndns-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndns-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}