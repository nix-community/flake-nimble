{
  description = ''A performant and scalable HTTP server.'';
  inputs.src-httpbeast-master.flake = false;
  inputs.src-httpbeast-master.type = "github";
  inputs.src-httpbeast-master.owner = "dom96";
  inputs.src-httpbeast-master.repo = "httpbeast";
  inputs.src-httpbeast-master.ref = "refs/heads/master";
  
  
  inputs."asynctools".type = "github";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".repo = "flake-nimble";
  inputs."asynctools".ref = "flake-pinning";
  inputs."asynctools".dir = "nimpkgs/a/asynctools";

  outputs = { self, nixpkgs, src-httpbeast-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpbeast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpbeast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}