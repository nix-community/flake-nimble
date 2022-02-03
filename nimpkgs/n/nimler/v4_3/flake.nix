{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v4_3.flake = false;
  inputs.src-nimler-v4_3.type = "github";
  inputs.src-nimler-v4_3.owner = "wltsmrz";
  inputs.src-nimler-v4_3.repo = "nimler";
  inputs.src-nimler-v4_3.ref = "refs/tags/v4.3";
  
  outputs = { self, nixpkgs, src-nimler-v4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}