{
  description = ''OAuth library for nim'';
  inputs.src-oauth-master.flake = false;
  inputs.src-oauth-master.type = "github";
  inputs.src-oauth-master.owner = "CORDEA";
  inputs.src-oauth-master.repo = "oauth";
  inputs.src-oauth-master.ref = "refs/heads/master";
  
  
  inputs."sha1".url = "path:../../../s/sha1";
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  outputs = { self, nixpkgs, src-oauth-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oauth-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oauth-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}