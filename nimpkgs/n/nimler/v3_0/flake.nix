{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v3_0.flake = false;
  inputs.src-nimler-v3_0.type = "github";
  inputs.src-nimler-v3_0.owner = "wltsmrz";
  inputs.src-nimler-v3_0.repo = "nimler";
  inputs.src-nimler-v3_0.ref = "refs/tags/v3.0";
  
  outputs = { self, nixpkgs, src-nimler-v3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}