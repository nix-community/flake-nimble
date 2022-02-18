{
  description = ''Erlang/Elixir NIFs for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimler-v3_1.flake = false;
  inputs.src-nimler-v3_1.type = "github";
  inputs.src-nimler-v3_1.owner = "wltsmrz";
  inputs.src-nimler-v3_1.repo = "nimler";
  inputs.src-nimler-v3_1.ref = "refs/tags/v3.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimler-v3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}