{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_3.flake = false;
  inputs.src-rodcli-v0_1_3.type = "github";
  inputs.src-rodcli-v0_1_3.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_3.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}