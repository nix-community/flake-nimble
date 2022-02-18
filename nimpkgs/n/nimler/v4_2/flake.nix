{
  description = ''Erlang/Elixir NIFs for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimler-v4_2.flake = false;
  inputs.src-nimler-v4_2.type = "github";
  inputs.src-nimler-v4_2.owner = "wltsmrz";
  inputs.src-nimler-v4_2.repo = "nimler";
  inputs.src-nimler-v4_2.ref = "refs/tags/v4.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimler-v4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}