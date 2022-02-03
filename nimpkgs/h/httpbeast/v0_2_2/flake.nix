{
  description = ''A performant and scalable HTTP server.'';
  inputs.src-httpbeast-v0_2_2.flake = false;
  inputs.src-httpbeast-v0_2_2.type = "github";
  inputs.src-httpbeast-v0_2_2.owner = "dom96";
  inputs.src-httpbeast-v0_2_2.repo = "httpbeast";
  inputs.src-httpbeast-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."https://github.com/timotheecour/asynctools".url = "path:../../../h/https://github.com/timotheecour/asynctools";
  inputs."https://github.com/timotheecour/asynctools".type = "github";
  inputs."https://github.com/timotheecour/asynctools".owner = "riinr";
  inputs."https://github.com/timotheecour/asynctools".repo = "flake-nimble";
  inputs."https://github.com/timotheecour/asynctools".ref = "flake-pinning";
  inputs."https://github.com/timotheecour/asynctools".dir = "nimpkgs/h/https://github.com/timotheecour/asynctools";

  outputs = { self, nixpkgs, src-httpbeast-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpbeast-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpbeast-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}