{
  description = ''OAuth library for nim'';
  inputs.src-oauth-develop.flake = false;
  inputs.src-oauth-develop.type = "github";
  inputs.src-oauth-develop.owner = "CORDEA";
  inputs.src-oauth-develop.repo = "oauth";
  inputs.src-oauth-develop.ref = "refs/heads/develop";
  
  
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  outputs = { self, nixpkgs, src-oauth-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oauth-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oauth-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}