{
  inputs = {
    config = {
      inputs = {
        nixos-kexec.follows = "nixos-kexec";
        latest-system.follows = "latest-system";
      };
      url = "github:MaxHearnden/nixos-config";
    };

    latest-system = {
      inputs.nixpkgs.follows = "config/nixpkgs";
      url = "github:MaxHearnden/latest-system";
    };

    nixos-kexec = {
      inputs.nixpkgs.follows = "config/nixpkgs";
      url = "github:MaxHearnden/nixos-kexec";
    };
  };

  outputs = { config, self, ... }: {
    inherit (config) packages hydraJobs nixosConfigurations;
  };
}
