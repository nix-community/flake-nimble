{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_5.flake = false;
  inputs.src-rodcli-v0_1_5.type = "github";
  inputs.src-rodcli-v0_1_5.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_5.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}