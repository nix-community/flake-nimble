{
  description = ''Nanosecond-percision time using timespec_get'';
  inputs.src-timespec_get-master.flake = false;
  inputs.src-timespec_get-master.type = "github";
  inputs.src-timespec_get-master.owner = "Matceporial";
  inputs.src-timespec_get-master.repo = "nim-timespec_get";
  inputs.src-timespec_get-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-timespec_get-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timespec_get-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timespec_get-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}