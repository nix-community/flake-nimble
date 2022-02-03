{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v4_0.flake = false;
  inputs.src-nimler-v4_0.type = "github";
  inputs.src-nimler-v4_0.owner = "wltsmrz";
  inputs.src-nimler-v4_0.repo = "nimler";
  inputs.src-nimler-v4_0.ref = "refs/tags/v4.0";
  
  outputs = { self, nixpkgs, src-nimler-v4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}