{
  description = ''Syndicated actors for conversational concurrency'';
  inputs.src-syndicate-1_1_0.flake = false;
  inputs.src-syndicate-1_1_0.type = "other";
  inputs.src-syndicate-1_1_0.owner = "~ehmry";
  inputs.src-syndicate-1_1_0.repo = "syndicate-nim";
  inputs.src-syndicate-1_1_0.ref = "refs/tags/1.1.0";
  
  
  inputs."nimsha2".url = "path:../../../n/nimsha2";
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."preserves".url = "path:../../../p/preserves";
  inputs."preserves".type = "github";
  inputs."preserves".owner = "riinr";
  inputs."preserves".repo = "flake-nimble";
  inputs."preserves".ref = "flake-pinning";
  inputs."preserves".dir = "nimpkgs/p/preserves";

  outputs = { self, nixpkgs, src-syndicate-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syndicate-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syndicate-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}