{
  description = ''A pure Nim Domain Name System (DNS) client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ndns-main.flake = false;
  inputs.src-ndns-main.type = "github";
  inputs.src-ndns-main.owner = "rockcavera";
  inputs.src-ndns-main.repo = "nim-ndns";
  inputs.src-ndns-main.ref = "refs/heads/main";
  inputs.src-ndns-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."dnsprotocol".type = "github";
  inputs."dnsprotocol".owner = "riinr";
  inputs."dnsprotocol".repo = "flake-nimble";
  inputs."dnsprotocol".ref = "flake-pinning";
  inputs."dnsprotocol".dir = "nimpkgs/d/dnsprotocol";
  inputs."dnsprotocol".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotocol".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ndns-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndns-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndns-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}