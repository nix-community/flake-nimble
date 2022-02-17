{
  description = ''Central Bank of Argentina Gov API Client with debtor corporations info'';
  inputs.src-bcra-master.flake = false;
  inputs.src-bcra-master.type = "github";
  inputs.src-bcra-master.owner = "juancarlospaco";
  inputs.src-bcra-master.repo = "nim-bcra";
  inputs.src-bcra-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-bcra-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bcra-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bcra-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}